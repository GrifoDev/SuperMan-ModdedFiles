.class Landroid/support/v17/leanback/app/SearchFragment$7;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$7;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$7;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarVisibility()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$7;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$7;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/SearchFragment$7;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
