.class Landroid/support/v17/leanback/app/SearchFragment$3;
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v4}, Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;->getResultsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v4, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v4, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/SearchFragment;->releaseAdapter()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iput-object v0, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v5, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v5, v5, Landroid/support/v17/leanback/app/SearchFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_1
    if-eqz v1, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-nez v4, :cond_6

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchFragment;->executePendingQuery()V

    :cond_4
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarNextFocusId()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchFragment;->updateFocus()V

    goto :goto_2
.end method
