.class public Landroid/preference/PreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x116002f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    sget-object v6, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    .line 54
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v5, "density":F
    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v1, v6

    .line 59
    .local v1, "defaultBorderTop":I
    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v2, v6

    .line 60
    .local v2, "defaultBottomPadding":I
    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v3, v6

    .line 61
    .local v3, "defaultLeftPadding":I
    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v4, v6

    .line 64
    .local v4, "defaultRightPadding":I
    const/4 v6, 0x0

    .line 63
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    .line 67
    const/4 v6, 0x1

    .line 66
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    .line 70
    const/4 v6, 0x2

    .line 69
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    .line 73
    const/4 v6, 0x3

    .line 72
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    move-result v3

    .line 90
    .local v3, "borderTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    move-result v0

    .line 91
    .local v0, "borderBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    move-result v1

    .line 92
    .local v1, "borderLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    move-result v2

    .line 94
    .local v2, "borderRight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 95
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v10, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-object v4, v10

    .line 98
    .local v4, "layoutParams":Landroid/preference/PreferenceFrameLayout$LayoutParams;
    :cond_0
    if-eqz v4, :cond_4

    iget-boolean v10, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v10, :cond_4

    .line 99
    iget-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v10, :cond_1

    .line 100
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v3, v10

    .line 101
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v0, v10

    .line 102
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v1, v10

    .line 103
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v2, v10

    .line 104
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingTop()I

    move-result v9

    .line 119
    .local v9, "previousTop":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingBottom()I

    move-result v6

    .line 120
    .local v6, "previousBottom":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingLeft()I

    move-result v7

    .line 121
    .local v7, "previousLeft":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getPaddingRight()I

    move-result v8

    .line 122
    .local v8, "previousRight":I
    if-ne v9, v3, :cond_2

    if-eq v6, v0, :cond_5

    .line 124
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/preference/PreferenceFrameLayout;->setPadding(IIII)V

    .line 127
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void

    .line 109
    .end local v6    # "previousBottom":I
    .end local v7    # "previousLeft":I
    .end local v8    # "previousRight":I
    .end local v9    # "previousTop":I
    :cond_4
    iget-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v10, :cond_1

    .line 110
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v3, v10

    .line 111
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v0, v10

    .line 112
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v1, v10

    .line 113
    iget v10, p0, Landroid/preference/PreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v2, v10

    .line 114
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/preference/PreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_0

    .line 123
    .restart local v6    # "previousBottom":I
    .restart local v7    # "previousLeft":I
    .restart local v8    # "previousRight":I
    .restart local v9    # "previousTop":I
    :cond_5
    if-ne v7, v1, :cond_2

    if-eq v8, v2, :cond_3

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/preference/PreferenceFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/preference/PreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method
