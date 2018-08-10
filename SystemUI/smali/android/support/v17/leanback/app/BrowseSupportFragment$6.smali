.class Landroid/support/v17/leanback/app/BrowseSupportFragment$6;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field final synthetic val$allPresenters:[Landroid/support/v17/leanback/widget/Presenter;

.field final synthetic val$invisibleRowPresenter:Landroid/support/v17/leanback/widget/Presenter;


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;->val$adapterPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;->val$invisibleRowPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v1
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$6;->val$allPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method
