.class public Lcom/samsung/android/srib/virtualtourAPI/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field private static FOV:F


# instance fields
.field private final ASPECT_RATIO:F

.field private final BLEND_DISTANCE:F

.field private final FOCUS:F

.field private final FOV_Y:F

.field private final IMAGE_HEIGHT_PIX:I

.field private final IMAGE_SIZE_WORLD:F

.field private final IMAGE_WIDTH_PIX:I

.field private ImagePositions:[I

.field public IsWalkStarting:Z

.field private final STEP_SIZE:F

.field private STEP_TIME:F

.field private TURN_TIME:F

.field private final ZOOM_NO_HOLES:F

.field private curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private curSeqTransitionAmount:F

.field private currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private currentModelMatrix:[F

.field private currentParsingImage:I

.field private currentSceneTime:F

.field public data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private imageCount:I

.field private maxSceneTime:F

.field private maxSteps:F

.field private oldblY:F

.field private oldtlX:F

.field private oldtlY:F

.field private oldtrX:F


# direct methods
.method private constructor <init>(III)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_SIZE_WORLD:F

    const v0, 0x3f60624e    # 0.8765f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ZOOM_NO_HOLES:F

    iput v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSceneTime:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    if-gt p2, p3, :cond_0

    const-wide/high16 v4, 0x4045000000000000L    # 42.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    sput v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV:F

    :goto_0
    iput p2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    iput p3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_HEIGHT_PIX:I

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_HEIGHT_PIX:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ASPECT_RATIO:F

    sget v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV:F

    div-float/2addr v0, v8

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ASPECT_RATIO:F

    float-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV_Y:F

    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->resetROI()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->TURN_TIME:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    sget v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV:F

    div-float/2addr v0, v8

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    div-double v4, v6, v4

    double-to-float v0, v4

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    iput v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iput v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->imageCount:I

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->imageCount:I

    new-array v0, v0, [Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    return-void

    :cond_0
    const-wide/high16 v4, 0x404f000000000000L    # 62.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    sput v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV:F

    goto/16 :goto_0
.end method

.method private CalculatePoints(F)[F
    .locals 12

    const/4 v6, 0x2

    new-array v4, v6, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v4, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr p1, v3

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v2, v6

    float-to-double v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p1, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v6, v6

    const v7, 0x3f60624e    # 0.8765f

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    div-float v6, v7, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    float-to-double v6, v1

    float-to-double v8, v5

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    float-to-double v10, p1

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v1, v6

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float/2addr v6, v0

    mul-float/2addr v1, v6

    sub-float v1, v0, v1

    neg-float v6, v3

    mul-float/2addr v6, v1

    const/4 v7, 0x0

    aput v6, v4, v7

    neg-float v6, v3

    mul-float/2addr v6, v0

    const/4 v7, 0x1

    aput v6, v4, v7

    return-object v4
.end method

.method public static createScene(III)Lcom/samsung/android/srib/virtualtourAPI/Scene;
    .locals 1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_0

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;-><init>(III)V

    return-object v0
.end method

.method private resetROI()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlX:F

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlY:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtrX:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_HEIGHT_PIX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldblY:F

    return-void
.end method

.method private updateOldPoints(FFFFFFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlX:F

    iput p2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlY:F

    iput p3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtrX:F

    iput p8, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldblY:F

    return-void
.end method


# virtual methods
.method public End()V
    .locals 11

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v2, :cond_1

    :goto_0
    iput v9, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    iput v9, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ImagePositions:[I

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    if-lt v0, v2, :cond_2

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->imageCount:I

    if-gt v2, v3, :cond_3

    :cond_0
    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->imageCount:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSceneTime:F

    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_5

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    invoke-virtual {v2, v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setTotalTransitionAmount(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ImagePositions:[I

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    mul-float v1, v6, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ImagePositions:[I

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v2, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v7, v1, v7

    iget v8, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v2, v5

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v5, v1, v5

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSceneTime:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v5, v1, v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    mul-float v1, v6, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ImagePositions:[I

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v2, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v7, v1, v7

    iget v8, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v2, v5

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v5, v1, v5

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSceneTime:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    iget v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v5, v1, v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v5, :cond_8

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v5, :cond_d

    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    if-eq v2, v5, :cond_b

    :goto_6
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setLastinTurn(Z)V

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v5

    neg-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    move v2, v3

    :goto_7
    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v5

    neg-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_6

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->Valid:Z

    goto/16 :goto_4

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setTripleRender(Z)V

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setTripleRender(Z)V

    goto :goto_6

    :cond_c
    move v2, v4

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setLastinTurn(Z)V

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v5

    neg-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_10

    move v2, v3

    :goto_8
    if-nez v2, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v5

    neg-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_7

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->Valid:Z

    goto/16 :goto_5

    :cond_10
    move v2, v4

    goto :goto_8
.end method

.method public First(I[B)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v8, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->createImageNode(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-result-object v0

    aput-object v0, v7, v8

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iput v9, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    iput v9, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    return-void
.end method

.method public Forward(I[BF)V
    .locals 11

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/high16 p3, 0x40800000    # 4.0f

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-eqz v0, :cond_5

    :goto_1
    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_2

    iput p3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    :cond_2
    new-instance v7, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float v8, p3, v0

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v0, v8

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v0, v8

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v0, v8

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float/2addr v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_7

    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v10, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->createImageNode(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-result-object v0

    aput-object v0, v9, v10

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setFirstWalkImage(Z)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setSyBysx(F)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/high16 p3, 0x40c00000    # 6.0f

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    const v2, 0x3f60624e    # 0.8765f

    div-float v1, v2, v1

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setFirstWalkImage(Z)V

    goto :goto_3
.end method

.method public Forward(I[BFFF)V
    .locals 9

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v1, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float v3, v0, v1

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BFFFFZF)V

    return-void
.end method

.method public Forward(I[BFFFFFFFFF)V
    .locals 27

    sub-float v4, p5, p3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v20, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtrX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlX:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v23, v4, v5

    sub-float v4, p10, p4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v19, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldblY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlY:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v22, v4, v5

    mul-float v18, v20, v19

    mul-float v21, v23, v22

    cmpg-float v4, v21, v18

    if-gez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->resetROI()V

    sub-float v4, p5, p3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v20, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtrX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlX:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v23, v4, v5

    sub-float v4, p10, p4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v19, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldblY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->oldtlY:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v22, v4, v5

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v19, v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " newHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Invalid Parameters"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BF)V

    :goto_0
    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->updateOldPoints(FFFFFFFF)V

    return-void

    :cond_2
    div-float v7, v23, v20

    div-float v8, v22, v19

    const v4, 0x3fe66666    # 1.8f

    cmpl-float v4, v7, v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    const v4, 0x3fe66666    # 1.8f

    cmpl-float v4, v8, v4

    if-lez v4, :cond_5

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Erroneous Parameters"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BF)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    div-float v24, v8, v7

    const v4, 0x3f847ae1    # 1.035f

    cmpl-float v4, v24, v4

    if-lez v4, :cond_8

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    const v4, 0x3f770a3d    # 0.965f

    cmpg-float v4, v24, v4

    if-gez v4, :cond_7

    :cond_6
    const v4, 0x3f847ae1    # 1.035f

    cmpl-float v4, v24, v4

    if-lez v4, :cond_9

    const v4, 0x3f847ae1    # 1.035f

    mul-float v8, v7, v4

    :cond_7
    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v12, p11

    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BFFFFZF)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    move/from16 v0, v24

    float-to-double v4, v0

    const-wide v10, 0x3feee147ae147ae1L    # 0.965

    cmpg-double v4, v4, v10

    if-gez v4, :cond_7

    const v4, 0x3f770a3d    # 0.965f

    mul-float v8, v7, v4

    goto :goto_3
.end method

.method public Forward(I[BFFFFZF)V
    .locals 34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, p3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v28, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v28, v28, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    :cond_0
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v3, v28, v3

    if-gez v3, :cond_8

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    const/high16 v3, 0x41400000    # 12.0f

    cmpl-float v3, v28, v3

    if-lez v3, :cond_2

    :cond_1
    const/high16 v3, 0x40800000    # 4.0f

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v28

    :cond_2
    :goto_1
    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, p5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v4, v4

    div-float v29, v3, v4

    if-nez p7, :cond_9

    :goto_2
    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, p6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    int-to-float v4, v4

    div-float v30, v3, v4

    if-nez p7, :cond_a

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v3, v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    move/from16 v0, v29

    neg-float v4, v0

    move/from16 v0, v30

    neg-float v5, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float v7, v7, v28

    const/4 v8, 0x0

    invoke-static {v3, v8, v4, v5, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v3, 0x4

    new-array v6, v3, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v6, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v6, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v6, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput v3, v6, v4

    const/4 v3, 0x4

    new-array v11, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v11, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v11, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v11, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput v3, v11, v4

    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v16, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v16, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v16, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput v3, v16, v4

    const/4 v3, 0x4

    new-array v2, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v3, v2, v4

    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v32, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v32, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v32, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v32, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v3, v32, v4

    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v26, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v26, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v26, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v26, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v3, v26, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v32

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, 0x3

    aget v4, v32, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v32, v4

    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, 0x3

    aget v4, v32, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v32, v4

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, 0x3

    aget v4, v32, v4

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v32, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v26

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v3, 0x0

    aget v3, v26, v3

    const/4 v4, 0x3

    aget v4, v26, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v26, v4

    const/4 v3, 0x1

    aget v3, v26, v3

    const/4 v4, 0x3

    aget v4, v26, v4

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v26, v4

    const/4 v3, 0x2

    aget v3, v26, v3

    const/4 v4, 0x3

    aget v4, v26, v4

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v26, v4

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x2

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v31, v0

    const/4 v3, 0x0

    aget v3, v2, v3

    div-float v3, v3, v31

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aget v3, v2, v3

    div-float v3, v3, v31

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aget v3, v2, v3

    div-float v3, v3, v31

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v32, v4

    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, 0x1

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v32, v4

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, 0x2

    aget v4, v26, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v32, v4

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v32, v4

    const/4 v5, 0x2

    aget v5, v32, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v33, v0

    const/4 v3, 0x0

    aget v3, v32, v3

    div-float v3, v3, v33

    const/4 v4, 0x0

    aput v3, v32, v4

    const/4 v3, 0x1

    aget v3, v32, v3

    div-float v3, v3, v33

    const/4 v4, 0x1

    aput v3, v32, v4

    const/4 v3, 0x2

    aget v3, v32, v3

    div-float v3, v3, v33

    const/4 v4, 0x2

    aput v3, v32, v4

    new-instance v24, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    move-object/from16 v0, v24

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float v4, v4, v28

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, v24

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float v4, v4, v28

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, v24

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    mul-float v4, v4, v28

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    new-instance v27, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v27 .. v27}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/samsung/android/srib/vecmath/Vector3f;->set(Lcom/samsung/android/srib/vecmath/Tuple3f;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v2, v5

    mul-float v5, v5, v29

    sub-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v32, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, v27

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v27

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v27

    iget v5, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float v4, v25, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_c

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-eqz v3, :cond_d

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    add-float v3, v3, v28

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    cmpg-float v3, v3, v28

    if-gez v3, :cond_4

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move/from16 v23, v0

    move/from16 v18, p1

    move-object/from16 v19, p2

    invoke-static/range {v17 .. v23}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->createImageNode(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v3, v3, v4

    div-float v4, p4, p3

    invoke-virtual {v3, v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setSyBysx(F)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setFirstWalkImage(Z)V

    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v3, v3, v4

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v3, v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_0

    const/high16 v3, 0x40c00000    # 6.0f

    cmpg-float v3, v28, v3

    if-gez v3, :cond_7

    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_6

    const/high16 v3, 0x41400000    # 12.0f

    cmpl-float v3, v28, v3

    if-lez v3, :cond_2

    :cond_6
    const/high16 v3, 0x40c00000    # 6.0f

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v28

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    div-float v29, v29, p3

    goto/16 :goto_2

    :cond_a
    div-float v30, v30, p4

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    const v5, 0x3f60624e    # 0.8765f

    div-float v4, v5, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setFirstWalkImage(Z)V

    goto/16 :goto_6
.end method

.method public Turn(IF)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IsWalkStarting:Z

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSteps:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v9, v0

    cmpl-float v0, p2, v9

    if-lez v0, :cond_3

    move p2, v9

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransitionAmount(F)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    :cond_1
    :goto_2
    new-instance v7, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v0, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    new-instance v8, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v8}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v0, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v0, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {v8}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->TURN_TIME:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    invoke-direct {p0, p2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->CalculatePoints(F)[F

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v12, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentModelMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentFocalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v6, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    const/4 v2, 0x0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->createImageNode(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move-result-object v0

    aput-object v0, v11, v12

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setBound(F)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqStartNode:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->curSeqTransitionAmount:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setTotalTransitionAmount(F)V

    goto/16 :goto_0

    :cond_3
    neg-float v0, v9

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    neg-float p2, v9

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    const v2, 0x3f60624e    # 0.8765f

    div-float v1, v2, v1

    iget v2, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentParsingImage:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->currentSceneTime:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->setSceneTime(F)V

    goto/16 :goto_2
.end method

.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ASPECT_RATIO:F

    return v0
.end method

.method public getBlendDistance()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->BLEND_DISTANCE:F

    return v0
.end method

.method public getFOV()F
    .locals 1

    sget v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV:F

    return v0
.end method

.method public getFOV_Y()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOV_Y:F

    return v0
.end method

.method public getFocusPoint()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->FOCUS:F

    neg-float v0, v0

    return v0
.end method

.method public getImageCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->imageCount:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_HEIGHT_PIX:I

    return v0
.end method

.method public getImagePos()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->ImagePositions:[I

    return-object v0
.end method

.method public getImageSize()F
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->IMAGE_WIDTH_PIX:I

    return v0
.end method

.method public getMaxSceneTime()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->maxSceneTime:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_SIZE:F

    return v0
.end method

.method public getStepTime()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->STEP_TIME:F

    return v0
.end method

.method public getZoomNoHoles()F
    .locals 1

    const v0, 0x3f60624e    # 0.8765f

    return v0
.end method
