.class public Lcom/samsung/android/srib/virtualtourAPI/ImageNode;
.super Ljava/lang/Object;
.source "ImageNode.java"


# instance fields
.field private ImageNo:I

.field private IsFirstWalkImage:Z

.field private LastinTurn:Z

.field private TripleRender:Z

.field public Valid:Z

.field aDepthMap:[B

.field private bound1:F

.field private curSeqTransitionAmount:F

.field private focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private imageID:I

.field private lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private maxStepsinSeq:F

.field private modelMatrix:[F

.field private nextTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field private nextTransitionAmount:F

.field private numofImginSeq:I

.field private sceneTime:F

.field private syBysx:F


# direct methods
.method private constructor <init>(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    iput v3, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->bound1:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->syBysx:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->numofImginSeq:I

    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->TripleRender:Z

    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->LastinTurn:Z

    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->Valid:Z

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->ImageNo:I

    iput p2, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->imageID:I

    iput-object p3, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->aDepthMap:[B

    new-array v1, v4, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->modelMatrix:[F

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p5, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p5, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p5, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p6, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p6, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, p6, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v2, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput p7, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->sceneTime:F

    iput v3, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->curSeqTransitionAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransitionAmount:F

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->modelMatrix:[F

    aget v2, p4, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createImageNode(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)Lcom/samsung/android/srib/virtualtourAPI/ImageNode;
    .locals 8

    new-instance v0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;-><init>(II[B[FLcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;F)V

    return-object v0
.end method


# virtual methods
.method public getBound()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->bound1:F

    return v0
.end method

.method public getDepthMap()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->aDepthMap:[B

    return-object v0
.end method

.method public getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    return-object v0
.end method

.method public getImageID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->imageID:I

    return v0
.end method

.method public getImageNo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->ImageNo:I

    return v0
.end method

.method public getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->lookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    return-object v0
.end method

.method public getMaxStepsinSeq()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->maxStepsinSeq:F

    return v0
.end method

.method public getModelMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->modelMatrix:[F

    return-object v0
.end method

.method public getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    return-object v0
.end method

.method public getNextTransitionAmount()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransitionAmount:F

    return v0
.end method

.method public getNumofImginSeq()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->numofImginSeq:I

    return v0
.end method

.method public getSceneTime()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->sceneTime:F

    return v0
.end method

.method public getSyBysx()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->syBysx:F

    return v0
.end method

.method public getTotalTransitionAmount()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->curSeqTransitionAmount:F

    return v0
.end method

.method public isFirstWalkImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->IsFirstWalkImage:Z

    return v0
.end method

.method public isLastinTurn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->LastinTurn:Z

    return v0
.end method

.method public isTripleRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->TripleRender:Z

    return v0
.end method

.method public setBound(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->bound1:F

    return-void
.end method

.method public setCurrentFocus(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput p1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput p2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->focalPoint:Lcom/samsung/android/srib/vecmath/Vector3f;

    iput p3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    return-void
.end method

.method public setFirstWalkImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->IsFirstWalkImage:Z

    return-void
.end method

.method public setLastinTurn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->LastinTurn:Z

    return-void
.end method

.method public setMaxStepsinSeq(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->maxStepsinSeq:F

    return-void
.end method

.method public setNextTransition(Lcom/samsung/android/srib/virtualtourAPI/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    return-void
.end method

.method public setNextTransitionAmount(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->nextTransitionAmount:F

    return-void
.end method

.method public setNumofImginSeq(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->numofImginSeq:I

    return-void
.end method

.method public setSceneTime(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->sceneTime:F

    return-void
.end method

.method public setSyBysx(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->syBysx:F

    return-void
.end method

.method public setTotalTransitionAmount(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->curSeqTransitionAmount:F

    return-void
.end method

.method public setTripleRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->TripleRender:Z

    return-void
.end method
