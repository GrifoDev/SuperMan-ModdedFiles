.class public Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectItemViewHolderTask"
.end annotation


# instance fields
.field private mItemPosition:I

.field mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

.field private mSmoothScroll:Z


# virtual methods
.method public isSmoothScroll()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    return v0
.end method

.method public run(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3

    instance-of v2, p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;-><init>(Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->isSmoothScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_0
.end method
