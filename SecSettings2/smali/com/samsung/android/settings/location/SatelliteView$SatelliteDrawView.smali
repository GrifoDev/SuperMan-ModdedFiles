.class public Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteDrawView"
.end annotation


# instance fields
.field private circleColor:I

.field private numberColor:I

.field private rectColor:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get4()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get4()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->adajustColorForTheme()V

    return-void
.end method

.method private adajustColorForTheme()V
    .locals 4

    const/high16 v3, -0x10000

    const/16 v2, 0xff

    const/16 v1, 0x7f

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v0}, Lcom/samsung/android/settings/location/SatelliteView;->-get11(Lcom/samsung/android/settings/location/SatelliteView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    iput v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-static {v2, v1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    :goto_0
    return-void

    :cond_0
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    iput v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    const v0, -0xff0001

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string/jumbo v0, "GPS_SATELLITE_VIEW"

    const-string/jumbo v1, "in satellite draw view onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v0}, Lcom/samsung/android/settings/location/SatelliteView;->-wrap0(Lcom/samsung/android/settings/location/SatelliteView;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    mul-double/2addr v2, v6

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v6

    const-wide v6, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    int-to-double v2, v0

    const-wide v6, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v2, v6

    const-wide v6, 0x4013666666666666L    # 4.85

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x401e666666666666L    # 7.6

    mul-double/2addr v6, v8

    const-wide v8, 0x4013666666666666L    # 4.85

    div-double/2addr v6, v8

    double-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v0, v2

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v0, v2

    double-to-float v1, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x4017666666666666L    # 5.85

    mul-double/2addr v6, v8

    const-wide v8, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v6, v8

    double-to-float v3, v6

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v13, 0x0

    const/4 v12, 0x0

    :goto_0
    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v12, v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get22()[F

    move-result-object v0

    aget v0, v0, v12

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get20()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get21()[I

    move-result-object v2

    aget v2, v2, v12

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get20()[I

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v1

    aput v1, v0, v12

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get21()[I

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v1

    aput v1, v0, v12

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get20()[I

    move-result-object v0

    aget v0, v0, v12

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get21()[I

    move-result-object v1

    aget v1, v1, v12

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x9

    if-gt v12, v0, :cond_2

    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get20()[I

    move-result-object v1

    aget v1, v1, v12

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get21()[I

    move-result-object v2

    aget v2, v2, v12

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v0}, Lcom/samsung/android/settings/location/SatelliteView;->-get14(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v0

    add-int/lit8 v1, v13, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get16(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    mul-int/2addr v1, v13

    add-int/2addr v0, v1

    int-to-float v7, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get17(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v8, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v2, v8

    double-to-int v1, v2

    add-int/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get22()[F

    move-result-object v1

    aget v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v0}, Lcom/samsung/android/settings/location/SatelliteView;->-get14(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get16(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v13, 0x1

    mul-int/2addr v0, v1

    int-to-float v9, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get17(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v10, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    int-to-float v10, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v11

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get15(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get14(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    add-int/lit8 v2, v13, 0x1

    mul-int/2addr v1, v2

    int-to-double v2, v1

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->-get16(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    int-to-double v6, v1

    int-to-double v8, v13

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get17(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get20()[I

    move-result-object v1

    aget v1, v1, v12

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get21()[I

    move-result-object v2

    aget v2, v2, v12

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get5()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public setPoint(DD)V
    .locals 7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p1

    float-to-double v4, v0

    div-double p1, v2, v4

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get2()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p3

    float-to-double v4, v0

    div-double p3, v2, v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get9()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get4()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, p1

    double-to-int v1, v2

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get10()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get4()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, p3

    double-to-int v1, v2

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    return-void
.end method
