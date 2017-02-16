.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    sget-object v4, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v2

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v10, v15, v16

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v15, v2, :cond_0

    move v7, v2

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_6

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v13

    :goto_1
    const/4 v8, 0x0

    mul-int v11, v9, v7

    add-int v15, v11, v7

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v11

    :goto_2
    if-ge v5, v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v6, :cond_1

    sub-int/2addr v13, v12

    :cond_1
    add-int v15, v13, v12

    add-int v16, v14, v4

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v13, v15

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v15, v12

    add-int/2addr v13, v15

    goto :goto_3

    :cond_4
    add-int/2addr v14, v8

    if-lez v9, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v14, v15

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v19, "Needs a maximum width"

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_1

    move v10, v7

    :cond_1
    add-int/lit8 v18, v10, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    sub-int v18, v17, v18

    div-int v5, v18, v10

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v4, 0x0

    const/16 v16, 0x0

    add-int v18, v7, v10

    add-int/lit8 v18, v18, -0x1

    div-int v14, v18, v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_6

    mul-int v15, v13, v10

    add-int v18, v15, v10

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v11, 0x0

    move v9, v15

    :goto_1
    if-ge v9, v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v9, v15

    :goto_2
    if-ge v9, v8, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v11, :cond_3

    invoke-virtual {v3, v6, v12}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int v16, v16, v11

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v16, v16, v18

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/PseudoGridView;->resolveSizeAndState(III)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    return-void
.end method
