.class public interface abstract Lcom/samsung/android/settings/search/SecSearchInferface$View;
.super Ljava/lang/Object;
.source "SecSearchInferface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchInferface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract clearFocusOnSearchView()V
.end method

.method public abstract getSearchText()Ljava/lang/CharSequence;
.end method

.method public abstract hideHistoryLayout()V
.end method

.method public abstract hideIme()V
.end method

.method public abstract hideLoadingView(Z)V
.end method

.method public abstract hideSearchResultLayout()V
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public abstract isSearchViewFocused()Z
.end method

.method public abstract requestFocusOnSearchView()V
.end method

.method public abstract setHistoryListAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setOnHistoryListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract setOnSearchResultsListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setOnSearchResultsListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract setSearchResultsListAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setSearchText(Ljava/lang/String;Z)V
.end method

.method public abstract setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V
.end method

.method public abstract showHistoryLayout(Z)V
.end method

.method public abstract showLoadingViewIfPossible()V
.end method

.method public abstract showSearchResultLayout(Z)V
.end method
