.class Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BaseRowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LateSelectionObserver"
.end annotation


# instance fields
.field mIsLateSelection:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseRowFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->performLateSelection()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->performLateSelection()V

    return-void
.end method

.method performLateSelection()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method startLateSelection()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
