.class public Lcom/android/contacts/common/list/ViewPagerTabStrip;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:F


# direct methods
.method private a()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(IFI)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->c:I

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->c:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-direct {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->c:I

    if-lez v5, :cond_2

    move v0, v1

    :cond_2
    :goto_1
    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->c:I

    if-eqz v4, :cond_3

    const/4 v1, -0x1

    :cond_3
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    sub-float v4, v7, v4

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->d:F

    sub-float v3, v7, v3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getHeight()I

    move-result v4

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->a:I

    sub-int v2, v4, v2

    int-to-float v2, v2

    int-to-float v3, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->c:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    move v1, v3

    goto :goto_2
.end method
