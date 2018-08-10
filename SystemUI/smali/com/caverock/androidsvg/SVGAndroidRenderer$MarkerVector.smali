.class Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerVector"
.end annotation


# instance fields
.field public dx:F

.field public dy:F

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    mul-float v2, p4, p4

    mul-float v3, p5, p5

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    float-to-double v2, p4

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v2, p5

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    :cond_0
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 8

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v0, p1, v4

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v1, p2, v4

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v6, v0

    div-double/2addr v6, v2

    double-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v6, v1

    div-double/2addr v6, v2

    double-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    :cond_0
    return-void
.end method

.method public add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
