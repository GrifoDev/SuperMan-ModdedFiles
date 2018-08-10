.class public Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RowHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mDescriptionView:Landroid/widget/TextView;

.field mOriginalTextColor:I

.field mSelectLevel:F

.field mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

.field mUnselectAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/leanback/R$id;->row_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowHeaderView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    sget v0, Landroid/support/v17/leanback/R$id;->row_header_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->initColors()V

    return-void
.end method


# virtual methods
.method initColors()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/RowHeaderView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mOriginalTextColor:I

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$fraction;->lb_browse_header_unselect_alpha:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    return-void
.end method
