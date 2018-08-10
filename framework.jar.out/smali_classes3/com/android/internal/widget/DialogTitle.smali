.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-lez v5, :cond_0

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    iget-object v8, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/R$styleable;->TextAppearance:[I

    const/4 v10, 0x0

    const v11, 0x1010041

    const v12, 0x1030044

    invoke-virtual {v8, v10, v9, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const v6, 0x3f99999a    # 1.2f

    iget-object v8, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->isThemeDeviceDefault()Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x3f99999a    # 1.2f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105032f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    div-float v1, v8, v2

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v1

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_0
    return-void

    :cond_1
    int-to-float v8, v7

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    goto :goto_0
.end method
