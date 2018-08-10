.class public Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    }
.end annotation


# instance fields
.field private mDist:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initCubic(FFFF)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 19

    const v16, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v11

    array-length v0, v11

    move/from16 v16, v0

    div-int/lit8 v10, v16, 0x3

    const/16 v16, 0x1

    aget v16, v11, v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_0

    const/16 v16, 0x2

    aget v16, v11, v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_1

    :cond_0
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_1
    array-length v0, v11

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget v16, v11, v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_0

    array-length v0, v11

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v16, v11, v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_0

    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move v3, v2

    :goto_0
    if-ge v8, v10, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget v7, v11, v3

    add-int/lit8 v3, v2, 0x1

    aget v14, v11, v2

    add-int/lit8 v2, v3, 0x1

    aget v15, v11, v3

    cmpl-float v16, v7, v12

    if-nez v16, :cond_2

    cmpl-float v16, v14, v13

    if-eqz v16, :cond_2

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "The Path cannot have discontinuity in the X axis."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_2
    cmpg-float v16, v14, v13

    if-gez v16, :cond_3

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "The Path cannot loop back on itself."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v16, v0

    aput v14, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v16, v0

    aput v15, v16, v8

    if-lez v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v16, v0

    aget v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    sub-float v5, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v16, v0

    aget v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    sub-float v6, v16, v17

    mul-float v16, v5, v5

    mul-float v17, v6, v6

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    add-float v17, v17, v4

    aput v17, v16, v8

    :cond_4
    move v13, v14

    move v12, v7

    add-int/lit8 v8, v8, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v9, v16, v17

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    aget v17, v16, v8

    div-float v17, v17, v9

    aput v17, v16, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public getXInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V

    return-object v0
.end method

.method public getYInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V

    return-object v0
.end method
