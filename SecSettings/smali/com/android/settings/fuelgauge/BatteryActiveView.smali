.class public Lcom/android/settings/fuelgauge/BatteryActiveView;
.super Landroid/view/View;
.source "BatteryActiveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawColor(Landroid/graphics/Canvas;IIIF)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    int-to-float v0, p3

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getColorArray()Landroid/util/SparseIntArray;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getPeriod()J

    move-result-wide v0

    long-to-float v5, v0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_1

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BatteryActiveView;->drawColor(Landroid/graphics/Canvas;IIIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method
