.class Landroid/support/v17/leanback/app/SearchSupportFragment$6;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->queryComplete()V

    return-void
.end method

.method public onSearchQueryChange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment;->retrieveResults(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iput-object p1, v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSearchQuerySubmit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment;->submitQuery(Ljava/lang/String;)V

    return-void
.end method
