.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 12

    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    array-length v8, p1

    array-length v9, p2

    if-ne v8, v9, :cond_0

    array-length v8, p1

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    array-length v6, p1

    add-int/lit8 v8, v6, -0x1

    new-array v2, v8, [F

    new-array v5, v6, [F

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_3

    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aget v9, p1, v4

    sub-float v3, v8, v9

    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The control points must all have strictly increasing X values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    aget v9, p2, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x0

    aput v8, v5, v9

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_4

    add-int/lit8 v8, v4, -0x1

    aget v8, v2, v8

    aget v9, v2, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x2

    aget v9, v2, v9

    aput v9, v5, v8

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_9

    aget v8, v2, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    const/4 v8, 0x0

    aput v8, v5, v4

    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    aget v8, v5, v4

    aget v9, v2, v4

    div-float v0, v8, v9

    add-int/lit8 v8, v4, 0x1

    aget v8, v5, v8

    aget v9, v2, v4

    div-float v1, v8, v9

    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_7

    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The control points must have monotonic Y values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    float-to-double v8, v0

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    const/high16 v8, 0x40400000    # 3.0f

    div-float v7, v8, v3

    aget v8, v5, v4

    mul-float/2addr v8, v7

    aput v8, v5, v4

    add-int/lit8 v8, v4, 0x1

    aget v9, v5, v8

    mul-float/2addr v9, v7

    aput v9, v5, v8

    goto :goto_3

    :cond_9
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    iput-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .locals 9

    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v2, v4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    return p1

    :cond_0
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v5

    return v4

    :cond_1
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    return v4

    :cond_2
    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v1

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    return v4

    :cond_4
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v5, v5, v1

    sub-float v0, v4, v5

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    div-float v3, v4, v0

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    mul-float v5, v7, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    mul-float v6, v7, v3

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    sub-float v7, v3, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v3

    const-string/jumbo v3, "MonotoneCubicSpline{["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
