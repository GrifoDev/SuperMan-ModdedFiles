.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v4, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

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
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "MessagingLinearLayout: Must specify positive maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public getContractedChildId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v12, p4, p2

    iget v13, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v12, v13

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    iget-boolean v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v13, 0x1

    if-ne v9, v13, :cond_3

    sub-int v13, v3, v5

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    :goto_2
    if-nez v7, :cond_2

    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v4, v13

    :cond_2
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v0, v2, v4, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v11, v13

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :sswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxHeight:I

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    add-int v19, v2, v4

    const/4 v11, 0x1

    add-int/lit8 v12, v10, -0x1

    :goto_2
    if-ltz v12, :cond_4

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_2

    move-object v2, v3

    nop

    nop

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v2, v19, v9

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    if-eqz v11, :cond_3

    const/4 v2, 0x0

    :goto_4
    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/4 v11, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    move/from16 v19, v16

    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    add-int v15, v2, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v10, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    iget-boolean v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_6

    :cond_5
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_6
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_9

    move-object/from16 v18, v3

    nop

    nop

    const/4 v2, 0x2

    if-ne v13, v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_7

    const/4 v13, 0x3

    :cond_7
    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    sub-int/2addr v13, v2

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v2, v4

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContractedChildId(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return-void
.end method

.method public setNumIndentLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    return-void
.end method
