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


# static fields
.field private static final NOT_MEASURED_BEFORE:I = -0x1


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mLastMeasuredWidth:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

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

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

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

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

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

    iget v11, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    sub-int v12, p4, p2

    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v12, v13

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    iget v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

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

    iget v14, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    :goto_2
    if-nez v7, :cond_2

    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v4, v13

    :cond_2
    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v13

    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v0, v2, v4, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v2, v11, v13

    goto :goto_2

    :cond_4
    const/4 v13, -0x1

    iput v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 26

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getMeasuredHeight()I

    move-result v2

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    :cond_0
    const/16 v20, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v12

    if-eqz v20, :cond_a

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :pswitch_0
    const v22, 0x7fffffff

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_2

    const/16 v20, 0x1

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int v24, v2, v4

    const/4 v13, 0x1

    add-int/lit8 v14, v12, -0x1

    :goto_3
    if-ltz v14, :cond_a

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/16 v23, 0x0

    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_5

    move-object/from16 v23, v3

    check-cast v23, Lcom/android/internal/widget/ImageFloatingTextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    const/4 v2, 0x3

    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    :cond_5
    if-eqz v13, :cond_8

    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v2, v24, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v4

    add-int v7, v2, v21

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v2, v24, v9

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int v2, v2, v21

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/4 v13, 0x0

    const/16 v17, 0x0

    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutHeight()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v9, v2, :cond_9

    const/16 v17, 0x1

    :cond_6
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_a

    xor-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_a

    move/from16 v24, v19

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    move/from16 v21, v0

    goto :goto_6

    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int v18, v2, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int v24, v2, v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v12, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_b

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_c

    :cond_b
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_c
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_10

    move-object/from16 v23, v3

    check-cast v23, Lcom/android/internal/widget/ImageFloatingTextView;

    const/4 v2, 0x2

    if-ne v15, v2, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    const/4 v15, 0x3

    :cond_d
    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    move-result v8

    if-nez v8, :cond_e

    xor-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v22, v2

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineCount()I

    move-result v2

    sub-int/2addr v15, v2

    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v24

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    if-eqz v13, :cond_11

    const/4 v2, 0x0

    :goto_a
    add-int/2addr v2, v4

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
