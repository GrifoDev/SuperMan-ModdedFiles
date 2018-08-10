.class public Landroid/support/v17/leanback/app/BrowseFragment$ListRowFragmentFactory;
.super Landroid/support/v17/leanback/app/BrowseFragment$FragmentFactory;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListRowFragmentFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseFragment$FragmentFactory",
        "<",
        "Landroid/support/v17/leanback/app/RowsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFragment(Ljava/lang/Object;)Landroid/app/Fragment;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$ListRowFragmentFactory;->createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsFragment;

    move-result-object v0

    return-object v0
.end method

.method public createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    return-object v0
.end method
