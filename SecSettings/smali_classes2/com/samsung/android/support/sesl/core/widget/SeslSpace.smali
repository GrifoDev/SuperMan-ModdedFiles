.class public Lcom/samsung/android/support/sesl/core/widget/SeslSpace;
.super Landroid/view/View;
.source "SeslSpace.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->setVisibility(I)V

    goto :goto_0
.end method

.method private static getDefaultSize2(II)I
    .locals 3

    move v0, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    goto :goto_0

    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->getDefaultSize2(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->getDefaultSize2(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSpace;->setMeasuredDimension(II)V

    return-void
.end method
