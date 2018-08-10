.class Landroid/support/v17/leanback/app/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchFragment;
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setSelectedPosition(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarVisibility()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget v1, v0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchFragment;->updateFocus()V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$2;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarNextFocusId()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
