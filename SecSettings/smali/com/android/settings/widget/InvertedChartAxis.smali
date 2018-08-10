.class public Lcom/android/settings/widget/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ChartAxis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public convertToPoint(J)F
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    iget-object v1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    iget v1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 4

    iget-object v2, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setBounds(JJ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    return v0
.end method

.method public setSize(F)Z
    .locals 1

    iput p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    move-result v0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method
