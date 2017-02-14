.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
.super Ljava/lang/Object;
.source "Pie.java"


# instance fields
.field private center_x:I

.field private center_y:I

.field private colorValue:Ljava/lang/String;

.field private finalStartAngle:F

.field private finalSweepAngle:F

.field private hasLine:Z

.field private line_x:I

.field private line_y:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private startAngle:F

.field private sweepAngle:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;III)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    iput-object p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    iput p5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    iput p6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setPaintColor()V

    return-void
.end method

.method private setPaintColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    return v4
.end method

.method public getCenterY()I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    return v4
.end method

.method public getColorValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    return v0
.end method

.method public getFinalSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    return v0
.end method

.method public getLineX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    return v0
.end method

.method public getLineY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    return v0
.end method

.method public getModifiedCenterX(FF)I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    div-float v4, p2, v8

    add-float/2addr v4, p1

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    return v4
.end method

.method public getModifiedCenterY(FF)I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    div-float v4, p2, v8

    add-float/2addr v4, p1

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    return v4
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getReverseStartAngle()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getReverseSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    neg-float v0, v0

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    return v0
.end method

.method public hasLine()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    goto :goto_0
.end method

.method public setFinalSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    return-void
.end method
