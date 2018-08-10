.class public Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "DetailsOverviewLogoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 9

    move-object v4, p2

    check-cast v4, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v7, p1

    check-cast v7, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p0, v7, v4}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v6, p1

    check-cast v6, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->isSizeFromDrawableIntrinsic()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v7

    if-gtz v7, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v7

    if-lez v7, :cond_3

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v7

    if-lez v7, :cond_1

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v8

    if-le v7, v8, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v8, v8

    div-float v3, v7, v8

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v7

    if-lez v7, :cond_2

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v8

    div-float v2, v7, v8

    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v7, v6, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iget-object v8, v6, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->notifyOnBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_fullwidth_details_overview_logo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->setSizeFromDrawableIntrinsic(Z)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setContext(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V
    .locals 0

    iput-object p2, p1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iput-object p3, p1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    return-void
.end method
