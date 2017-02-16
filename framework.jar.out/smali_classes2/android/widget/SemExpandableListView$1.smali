.class Landroid/widget/SemExpandableListView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/widget/SemExpandableListConnector$ItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WRAPPING_VIEW_ID:I = 0x7ffffc17


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .prologue
    .line 550
    iput-object p1, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V
    .locals 7
    .param p1, "holder"    # Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .param p2, "isLastChild"    # Z

    .prologue
    .line 693
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    .line 695
    :cond_0
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 697
    .local v3, "itemViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 698
    .local v1, "dividerHeight":I
    if-eqz p2, :cond_2

    const/16 v2, 0x8

    .line 699
    .local v2, "dividerVisibility":I
    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 702
    .local v0, "bottomMargin":I
    :goto_1
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 706
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-eqz v5, :cond_1

    .line 707
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 711
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v5, v0, 0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 692
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 698
    .end local v0    # "bottomMargin":I
    .end local v2    # "dividerVisibility":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dividerVisibility":I
    goto :goto_0

    .line 699
    :cond_3
    move v0, v1

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 686
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get24(Landroid/widget/SemExpandableListView;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 688
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get26(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 689
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get27(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 685
    return-void
.end method


# virtual methods
.method public onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 21
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    .line 556
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get15(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SemExpandableListConnector;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    .line 557
    .local v12, "isLastChild":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v4, v19, v20

    .line 559
    .local v4, "dividerHeight":I
    if-eqz p1, :cond_7

    move-object/from16 v19, p1

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7ffffc17

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 564
    const v19, 0x7a0a1eff

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    .line 565
    .local v7, "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 566
    .local v8, "indicator":Landroid/graphics/drawable/Drawable;
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 567
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get9(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_3

    .line 569
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :goto_1
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->refreshDrawableState()V

    .line 574
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    .local v14, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 593
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    .line 594
    return-object p1

    .line 556
    .end local v4    # "dividerHeight":I
    .end local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v12    # "isLastChild":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "isLastChild":Z
    goto/16 :goto_0

    .line 561
    .restart local v4    # "dividerHeight":I
    :cond_2
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "convertView is neither null nor the wrapping FrameLayout"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 571
    .restart local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 574
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get2(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 577
    :cond_5
    if-eqz v8, :cond_0

    .line 578
    const/4 v9, 0x0

    .line 579
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    .line 580
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 582
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 585
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 586
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 587
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v19, p1

    .line 589
    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 590
    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 591
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get2(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 597
    .end local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 598
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;-><init>(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;)V

    .line 599
    .restart local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    const v19, 0x7a0a1eff

    move/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 601
    const v19, 0x7ffffc17

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    .line 602
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 603
    move-object/from16 v0, p2

    iput-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    .line 604
    const/4 v9, 0x0

    .line 606
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v16

    .line 607
    .local v16, "t":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 608
    .local v2, "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get8(Landroid/widget/SemExpandableListView;)I

    move-result v15

    .line 609
    .local v15, "myB":I
    const/4 v10, 0x0

    .line 610
    .local v10, "indicatorLeft":I
    const/4 v11, 0x0

    .line 613
    .local v11, "indicatorRight":I
    if-ltz v2, :cond_8

    move/from16 v0, v16

    if-le v0, v15, :cond_9

    .line 614
    :cond_8
    return-object v6

    .line 617
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->isLayoutRtl()Z

    move-result v13

    .line 618
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 620
    .local v18, "width":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get10(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get25(Landroid/widget/SemExpandableListView;)I

    move-result v10

    .line 623
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v11

    .line 630
    :goto_6
    if-eqz v13, :cond_f

    .line 631
    move/from16 v17, v10

    .line 632
    .local v17, "temp":I
    sub-int v10, v18, v11

    .line 633
    sub-int v11, v18, v17

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get32(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v10, v10, v19

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get32(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v11, v11, v19

    .line 642
    .end local v17    # "temp":I
    :goto_7
    if-eq v10, v11, :cond_a

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 647
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_a

    .line 649
    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    .line 650
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 652
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 655
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 656
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 657
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 660
    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 661
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    if-lez v4, :cond_b

    .line 667
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 668
    .local v5, "dividerView":Landroid/view/View;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 670
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v14, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 671
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x50

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 672
    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap3(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 675
    .local v3, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 676
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 677
    iput-object v5, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    .line 682
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dividerView":Landroid/view/View;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b
    return-object v6

    .line 622
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get10(Landroid/widget/SemExpandableListView;)I

    move-result v10

    goto/16 :goto_5

    .line 624
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    .line 626
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get25(Landroid/widget/SemExpandableListView;)I

    move-result v10

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    .line 638
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v10, v10, v19

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v11, v11, v19

    goto/16 :goto_7

    .line 661
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get2(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8
.end method

.method public unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 717
    if-nez p1, :cond_0

    return-object v0

    .line 719
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7ffffc17

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 721
    nop

    nop

    .end local p1    # "convertView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 726
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_1
    return-object p1
.end method
