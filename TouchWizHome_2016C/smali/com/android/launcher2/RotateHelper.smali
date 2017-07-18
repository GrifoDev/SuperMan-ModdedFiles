.class public Lcom/android/launcher2/RotateHelper;
.super Ljava/lang/Object;
.source "RotateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static applyStyle(ILandroid/widget/LinearLayout;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->LinearLayout:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static applyStyle(ILandroid/widget/TextView;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static applyStyleLayout(ILandroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_2

    move-object v4, v5

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v6, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout_layout_gravity:I

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_b

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I

    if-ne v1, v6, :cond_3

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v5

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v6, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_gravity:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v6, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_weight:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    if-ne v1, v6, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_4
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_margin:I

    if-ne v1, v6, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_5
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginLeft:I

    if-ne v1, v6, :cond_6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_6
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginTop:I

    if-ne v1, v6, :cond_7

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_7
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginRight:I

    if-ne v1, v6, :cond_8

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_8
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginBottom:I

    if-ne v1, v6, :cond_1

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a
    :goto_3
    return-void

    :cond_b
    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_e

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I

    if-ne v1, v6, :cond_d

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    sget v6, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    if-ne v1, v6, :cond_c

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3
.end method

.method public static setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_gravity:I

    if-ne v0, v3, :cond_1

    const/16 v3, 0x33

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_orientation:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAligned:I

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    goto :goto_1

    :cond_3
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAlignedChildIndex:I

    if-ne v0, v3, :cond_4

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAlignedChildIndex(I)V

    goto :goto_1

    :cond_4
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_divider:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_measureWithLargestChild:I

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    goto :goto_1

    :cond_6
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_showDividers:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    goto :goto_1

    :cond_7
    sget v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_dividerPadding:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V
    .locals 11

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_textSize:I

    if-ne v0, v7, :cond_1

    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    cmpl-float v7, v4, v10

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_0

    invoke-virtual {p1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_ellipsize:I

    if-ne v0, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_2
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :pswitch_0
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :pswitch_1
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :pswitch_2
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :pswitch_3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_2
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_gravity:I

    if-ne v0, v7, :cond_3

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_3
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_lines:I

    if-ne v0, v7, :cond_4

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_1

    :cond_4
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_scrollHorizontally:I

    if-ne v0, v7, :cond_5

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_1

    :cond_5
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_singleLine:I

    if-ne v0, v7, :cond_6

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    sget v7, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    :cond_7
    if-eq v3, v8, :cond_8

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLines(I)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V
    .locals 12

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_14

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_background:I

    if-ne v0, v8, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_padding:I

    if-ne v0, v8, :cond_2

    const/4 v8, -0x1

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-ltz v3, :cond_0

    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    goto :goto_1

    :cond_2
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingLeft:I

    if-ne v0, v8, :cond_3

    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    :cond_3
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingTop:I

    if-ne v0, v8, :cond_4

    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    :cond_4
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingRight:I

    if-ne v0, v8, :cond_5

    invoke-virtual {p0, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_1

    :cond_5
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_paddingBottom:I

    if-ne v0, v8, :cond_6

    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_1

    :cond_6
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_clickable:I

    if-ne v0, v8, :cond_7

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_7
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_longClickable:I

    if-ne v0, v8, :cond_8

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1

    :cond_8
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_minWidth:I

    if-ne v0, v8, :cond_9

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    :cond_9
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_minHeight:I

    if-ne v0, v8, :cond_a

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_a
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_alpha:I

    if-ne v0, v8, :cond_b

    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_b
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotX:I

    if-ne v0, v8, :cond_c

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    :cond_c
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotY:I

    if-ne v0, v8, :cond_d

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    :cond_d
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_translationX:I

    if-ne v0, v8, :cond_e

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_e
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_translationY:I

    if-ne v0, v8, :cond_f

    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_f
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_scaleX:I

    if-ne v0, v8, :cond_10

    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_1

    :cond_10
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_scaleY:I

    if-ne v0, v8, :cond_11

    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    :cond_11
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotation:I

    if-ne v0, v8, :cond_12

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    :cond_12
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotationX:I

    if-ne v0, v8, :cond_13

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_1

    :cond_13
    sget v8, Lcom/android/launcher2/ShadowStyleable;->View_rotationY:I

    if-ne v0, v8, :cond_0

    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    :cond_14
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
