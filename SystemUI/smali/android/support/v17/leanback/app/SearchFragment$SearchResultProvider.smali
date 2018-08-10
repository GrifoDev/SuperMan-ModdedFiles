.class public interface abstract Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;
.super Ljava/lang/Object;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchResultProvider"
.end annotation


# virtual methods
.method public abstract getResultsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
.end method

.method public abstract onQueryTextChange(Ljava/lang/String;)Z
.end method

.method public abstract onQueryTextSubmit(Ljava/lang/String;)Z
.end method
