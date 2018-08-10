.class public Lcom/android/systemui/infinity/preview/GalaxyViewCircle;
.super Landroid/view/View;
.source "GalaxyViewCircle.java"


# static fields
.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I


# instance fields
.field private mCurrentXDegree:F

.field private mCurrentYDegree:F

.field private mExpand:F

.field private mHeight:F

.field private mIsInitStart:Z

.field private mLeftMargin:F

.field private mMainAlpha:F

.field private mMaxDegree:F

.field private mPaint:Landroid/graphics/Paint;

.field private mParticleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleCount:I

.field private mParticleScale:F

.field private mPlusValueX:F

.field private mPositionType:I

.field private mStarScale:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    const/high16 v0, 0x442f0000    # 700.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    iput v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    iput v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    iput v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    iput-boolean v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->initStarList()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateDXObject()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/infinity/preview/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public changeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidate()V

    return-void
.end method

.method public changePlusValue(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-float v0, p1

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidate()V

    return-void
.end method

.method public getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    return v0
.end method

.method public getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 8

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    float-to-double v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v1, v1

    add-float/2addr v1, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v4, v1

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v1, v1

    add-float/2addr v1, v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    return v0
.end method

.method public getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 8

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    neg-float v1, v1

    float-to-double v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v1, v1

    add-float/2addr v1, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v4, v1

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v1, v1

    add-float/2addr v1, v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 4

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v3, 0x3fcccccd    # 1.6f

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v0, v2, v3

    mul-float v2, v0, v0

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v1, v2, v3

    return v1
.end method

.method public getRandValue(F)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public initStarList()V
    .locals 12

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v3, 0x3fc00000    # 1.5f

    const v11, 0x3e2e147b    # 0.17f

    const v10, 0x3f19999a    # 0.6f

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v2, v0

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v2, v0

    move-object v0, p0

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v6, v0

    const v7, 0x3fcccccd    # 1.6f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v6, v0

    const v7, 0x3fb33333    # 1.4f

    move-object v4, p0

    move v8, v10

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v2, v0

    const v5, 0x3f99999a    # 1.2f

    move-object v0, p0

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;IFFF)V"
        }
    .end annotation

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v9, v0, :cond_0

    int-to-float v6, v9

    move/from16 v0, p2

    int-to-float v7, v0

    div-float v10, v6, v7

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    mul-float v8, v10, v6

    move/from16 v11, p3

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v4

    move/from16 v0, p3

    float-to-double v6, v0

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v7

    add-float v3, v6, v7

    move/from16 v0, p3

    float-to-double v6, v0

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    double-to-float v6, v6

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v7

    add-float v5, v6, v7

    new-instance v2, Lcom/android/systemui/infinity/preview/ParticleModel;

    const/high16 v7, 0x3f000000    # 0.5f

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/infinity/preview/ParticleModel;-><init>(FFFFF)V

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    const/4 v6, -0x1

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    const/4 v6, 0x0

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->tension:F

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->xRand:F

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->yRand:F

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v6

    iput v6, v2, Lcom/android/systemui/infinity/preview/ParticleModel;->zRand:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    :cond_1
    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    :cond_2
    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v4

    iget v5, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    mul-float v2, v4, v5

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    iget v4, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    iget v5, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    iget v6, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v7, 0x3ed70a3d    # 0.42f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setHorizontalLocation(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    goto :goto_0
.end method
