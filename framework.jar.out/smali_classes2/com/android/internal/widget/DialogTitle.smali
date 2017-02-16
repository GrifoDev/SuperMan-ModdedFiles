.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 54
    .local v4, "layout":Landroid/text/Layout;
    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    .line 56
    .local v5, "lineCount":I
    if-lez v5, :cond_1

    .line 57
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    .line 58
    .local v3, "ellipsisCount":I
    if-lez v3, :cond_1

    .line 59
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 60
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 62
    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    .line 63
    sget-object v8, Landroid/R$styleable;->TextAppearance:[I

    .line 62
    const/4 v9, 0x0

    .line 63
    const v10, 0x1010041

    .line 64
    const v11, 0x1030044

    .line 62
    invoke-virtual {v7, v9, v8, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 65
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 67
    .local v6, "textSize":I
    if-eqz v6, :cond_0

    .line 70
    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 71
    .local v2, "currentFontScale":F
    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    const v7, 0x3f99999a    # 1.2f

    .line 71
    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    .line 72
    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050179

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float v1, v7, v2

    .line 69
    .local v1, "baseTextSize":F
    const v7, 0x3f99999a    # 1.2f

    .line 73
    mul-float/2addr v7, v1

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 78
    .end local v1    # "baseTextSize":F
    .end local v2    # "currentFontScale":F
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 50
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "ellipsisCount":I
    .end local v5    # "lineCount":I
    .end local v6    # "textSize":I
    :cond_1
    return-void

    .line 75
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "currentFontScale":F
    .restart local v3    # "ellipsisCount":I
    .restart local v5    # "lineCount":I
    .restart local v6    # "textSize":I
    :cond_2
    int-to-float v7, v6

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    goto :goto_0
.end method
