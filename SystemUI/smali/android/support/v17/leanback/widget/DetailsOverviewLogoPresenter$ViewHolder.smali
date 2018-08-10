.class public Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "DetailsOverviewLogoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field protected mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

.field protected mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

.field private mSizeFromDrawableIntrinsic:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isSizeFromDrawableIntrinsic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mSizeFromDrawableIntrinsic:Z

    return v0
.end method

.method public setSizeFromDrawableIntrinsic(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mSizeFromDrawableIntrinsic:Z

    return-void
.end method
