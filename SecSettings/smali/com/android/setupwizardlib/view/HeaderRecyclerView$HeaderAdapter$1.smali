.class Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->-get0(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->-get0(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->-get0(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    add-int v2, p1, v0

    add-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemMoved(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->-get0(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
