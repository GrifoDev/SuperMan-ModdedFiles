.class public Landroid/support/v17/leanback/widget/ImageCardView;
.super Landroid/support/v17/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Landroid/support/v17/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v17/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .locals 17

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusable(Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view:I

    move-object/from16 v0, p0

    invoke-virtual {v11, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v14

    sget-object v15, Landroid/support/v17/leanback/R$styleable;->lbImageCardView:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v14, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v9, 0x1

    :goto_0
    and-int/lit8 v14, v5, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v10, 0x1

    :goto_1
    and-int/lit8 v14, v5, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    const/4 v6, 0x1

    :goto_2
    and-int/lit8 v14, v5, 0x4

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_5

    and-int/lit8 v14, v5, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    const/4 v7, 0x1

    :goto_4
    sget v14, Landroid/support/v17/leanback/R$id;->main_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    sget v14, Landroid/support/v17/leanback/R$id;->info_field:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->removeView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    if-eqz v10, :cond_7

    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_title:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v6, :cond_8

    sget v14, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_content:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    if-nez v8, :cond_9

    if-eqz v7, :cond_b

    :cond_9
    sget v12, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    if-eqz v7, :cond_a

    sget v12, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    if-eqz v10, :cond_c

    if-eqz v6, :cond_14

    :cond_c
    :goto_5
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v10, :cond_d

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_d
    if-eqz v7, :cond_e

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x11

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getId()I

    move-result v14

    const/16 v15, 0x8

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    sget v14, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x11

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v15, 0x10

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7

    :cond_16
    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getId()I

    move-result v14

    const/16 v15, 0x8

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6
.end method

.method private fadeIn()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ImageCardView;->fadeIn()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
