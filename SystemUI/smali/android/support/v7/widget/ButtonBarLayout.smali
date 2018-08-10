.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x140

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3

    move v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private isStacked()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    :goto_2
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v3, 0x50

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    iget-boolean v12, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v12, :cond_1

    iget v12, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v11, v12, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    iput v11, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_6

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v8, 0x1

    :goto_0
    move/from16 v0, p2

    invoke-super {p0, v4, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v12, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v12, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v12, -0x1000000

    and-int v6, v5, v12

    const/high16 v12, 0x1000000

    if-ne v6, v12, :cond_7

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_2

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    const/4 v8, 0x1

    :cond_2
    if-eqz v8, :cond_3

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_3
    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/lit8 v7, v12, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-eqz v12, :cond_8

    add-int/lit8 v12, v3, 0x1

    invoke-direct {p0, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v9

    if-ltz v9, :cond_4

    invoke-virtual {p0, v9}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    :cond_4
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    if-eq v12, v7, :cond_5

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_5
    return-void

    :cond_6
    move/from16 v4, p1

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_2
.end method
