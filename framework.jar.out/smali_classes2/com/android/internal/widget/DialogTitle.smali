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
    .locals 12

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-lez v5, :cond_1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/R$styleable;->TextAppearance:[I

    const/4 v9, 0x0

    const v10, 0x1010041

    const v11, 0x1030044

    invoke-virtual {v7, v9, v8, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x3f99999a    # 1.2f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050179

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float v1, v7, v2

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v1

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    return-void

    :cond_2
    int-to-float v7, v6

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    goto :goto_0
.end method
