.class public Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;
.super Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
.source "RowsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter",
        "<",
        "Landroid/support/v17/leanback/app/RowsSupportFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method
