.class public Landroid/transition/PatternPathMotion;
.super Landroid/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    sget-object v3, Lcom/android/internal/R$styleable;->PatternPathMotion:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "pathData must be supplied for patternPathMotion"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 12

    sub-float v8, p3, p1

    float-to-double v2, v8

    sub-float v8, p4, p2

    float-to-double v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v6, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-object v7
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .locals 20

    new-instance v10, Landroid/graphics/PathMeasure;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v15}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    const/4 v15, 0x2

    new-array v11, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v10, v9, v11, v15}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v15, 0x0

    aget v7, v11, v15

    const/4 v15, 0x1

    aget v8, v11, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v11, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v15, 0x0

    aget v13, v11, v15

    const/4 v15, 0x1

    aget v14, v11, v15

    cmpl-float v15, v13, v7

    if-nez v15, :cond_0

    cmpl-float v15, v14, v8

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "pattern must not end at the starting point"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-float v0, v13

    move/from16 v16, v0

    neg-float v0, v14

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sub-float v5, v7, v13

    sub-float v6, v8, v14

    float-to-double v0, v5

    move-wide/from16 v16, v0

    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v12, v15, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    float-to-double v0, v6

    move-wide/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-void
.end method
