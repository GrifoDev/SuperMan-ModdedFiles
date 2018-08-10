.class public Lcom/android/settings/widget/DefaultIndicatorSeekBar;
.super Landroid/widget/SeekBar;
.source "DefaultIndicatorSeekBar.java"


# instance fields
.field private mDefaultProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method


# virtual methods
.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMax()I

    move-result v12

    if-gt v11, v12, :cond_0

    iget v11, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMin()I

    move-result v12

    if-lt v11, v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ltz v10, :cond_1

    div-int/lit8 v4, v10, 0x2

    :goto_0
    if-ltz v2, :cond_2

    div-int/lit8 v3, v2, 0x2

    :goto_1
    neg-int v11, v4

    neg-int v12, v3

    invoke-virtual {v1, v11, v12, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingRight:I

    sub-int v0, v11, v12

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMax()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMin()I

    move-result v12

    sub-int v7, v11, v12

    int-to-float v11, v7

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    iget v11, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    int-to-float v11, v11

    int-to-float v12, v7

    div-float v9, v11, v12

    :goto_2
    int-to-float v11, v0

    mul-float/2addr v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v6, v11

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMirrorForRtl()Z

    move-result v11

    if-eqz v11, :cond_4

    sub-int v11, v0, v6

    iget v12, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingRight:I

    add-int v5, v11, v12

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    int-to-float v11, v5

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    iget v11, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingLeft:I

    add-int v5, v6, v11

    goto :goto_3
.end method

.method public getDefaultProgress()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return v0
.end method

.method public setDefaultProgress(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
