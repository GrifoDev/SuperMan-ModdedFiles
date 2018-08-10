.class public Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Length"
.end annotation


# instance fields
.field unit:Lcom/caverock/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method public floatValue()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0
.end method

.method public floatValue(F)F
    .locals 2

    sget-object v0, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    :pswitch_1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v0

    :pswitch_2
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_3
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x40228f5c    # 2.54f

    div-float/2addr v0, v1

    return v0

    :pswitch_4
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    return v0

    :pswitch_5
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    return v0

    :pswitch_6
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 9

    const/high16 v8, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v0, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v4, v3, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v4, v3

    div-float/2addr v4, v8

    return v4

    :cond_1
    iget v4, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v4

    :cond_2
    mul-float v4, v3, v3

    mul-float v5, v0, v0

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v4, v6

    double-to-float v1, v4

    iget v4, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v4, v1

    div-float/2addr v4, v8

    return v4
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 3

    sget-object v1, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    :pswitch_0
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    :pswitch_1
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :pswitch_2
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :pswitch_3
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :pswitch_4
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x40228f5c    # 2.54f

    div-float/2addr v1, v2

    return v1

    :pswitch_5
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x41cb3333    # 25.4f

    div-float/2addr v1, v2

    return v1

    :pswitch_6
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42900000    # 72.0f

    div-float/2addr v1, v2

    return v1

    :pswitch_7
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    return v1

    :pswitch_8
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    return v1

    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 3

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget v2, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    return v1

    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return v1
.end method

.method public isNegative()Z
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
