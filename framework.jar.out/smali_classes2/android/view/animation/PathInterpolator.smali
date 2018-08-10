.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mCubicSaved:Z

.field private mCubicX:[F

.field private mCubicY:[F

.field private mQuadSaved:Z

.field private mQuadX:F

.field private mQuadY:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    new-array v1, v3, [F

    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    new-array v1, v3, [F

    iput-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    iput-boolean v2, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    iput-boolean v2, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    aput p1, v1, v8

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    aput p2, v1, v8

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    aput p3, v1, v7

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    aput p4, v1, v7

    iput-boolean v7, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 14

    const v10, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v10}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v5

    array-length v10, v5

    div-int/lit8 v4, v10, 0x3

    const/4 v10, 0x1

    aget v10, v5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x2

    aget v10, v5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v10, v5

    if-ge v3, v10, :cond_2

    const-string/jumbo v10, "PathInterpolator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "initPath: pointComponents["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v5, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    aget v10, v5, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v5, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    :goto_1
    if-ge v3, v4, :cond_7

    add-int/lit8 v0, v1, 0x1

    aget v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    aget v8, v5, v0

    add-int/lit8 v0, v1, 0x1

    aget v9, v5, v1

    cmpl-float v10, v2, v6

    if-nez v10, :cond_5

    cmpl-float v10, v8, v7

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    iget-boolean v10, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "PathInterpolator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "initPath: mQuadX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/view/animation/PathInterpolator;->mQuadX:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mQuadY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/view/animation/PathInterpolator;->mQuadY:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v10, p0, Landroid/view/animation/PathInterpolator;->mCubicSaved:Z

    if-eqz v10, :cond_4

    const-string/jumbo v10, "PathInterpolator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "initPath: mCubicX[0] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mCubicY[0] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mCubicX[1] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/animation/PathInterpolator;->mCubicX:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mCubicY[1] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/animation/PathInterpolator;->mCubicY:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    cmpg-float v10, v8, v7

    if-gez v10, :cond_6

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path cannot loop back on itself."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v8, v10, v3

    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v9, v10, v3

    move v7, v8

    move v6, v2

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private initQuad(FF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Landroid/view/animation/PathInterpolator;->mQuadX:F

    iput p2, p0, Landroid/view/animation/PathInterpolator;->mQuadY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/PathInterpolator;->mQuadSaved:Z

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The path is null, which is created from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-direct {p0, v2}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p1, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    invoke-virtual {p1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0, v4, v6}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v12, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p1, v13, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-direct {p0, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    invoke-static {v0, v1}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createPathInterpolator([F[F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    return v10

    :cond_0
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_1

    return v9

    :cond_1
    const/4 v4, 0x0

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_4
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v5, v8, v4

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
