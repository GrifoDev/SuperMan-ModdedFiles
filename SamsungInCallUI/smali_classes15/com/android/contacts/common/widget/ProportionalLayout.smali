.class public Lcom/android/contacts/common/widget/ProportionalLayout;
.super Landroid/view/ViewGroup;
.source "ProportionalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    }
.end annotation


# instance fields
.field private mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    sget-object v1, Lcom/android/incallui/R$styleable;->ProportionalLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->parse(Ljava/lang/String;)Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    .line 85
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProportionalLayout requires exactly one child"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "child":Landroid/view/View;
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 130
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 93
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ProportionalLayout requires exactly one child"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 101
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 105
    .local v1, "childHeight":I
    iget-object v5, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    sget-object v6, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->heightToWidth:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    if-ne v5, v6, :cond_1

    .line 106
    int-to-float v5, v1

    iget v6, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 107
    .local v4, "width":I
    move v3, v1

    .line 115
    .local v3, "height":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 116
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 114
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    .line 119
    invoke-static {v4, p1}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v5

    invoke-static {v3, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v6

    .line 118
    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/common/widget/ProportionalLayout;->setMeasuredDimension(II)V

    .line 120
    return-void

    .line 109
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_1
    move v4, v2

    .line 110
    .restart local v4    # "width":I
    int-to-float v5, v2

    iget v6, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "height":I
    goto :goto_0
.end method

.method public setDirection(Lcom/android/contacts/common/widget/ProportionalLayout$Direction;)V
    .locals 0
    .param p1, "direction"    # Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mDirection:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    .line 138
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->mRatio:F

    .line 146
    return-void
.end method
