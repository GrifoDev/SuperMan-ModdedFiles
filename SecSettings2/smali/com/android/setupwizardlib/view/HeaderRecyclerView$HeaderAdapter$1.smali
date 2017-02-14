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

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$1:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyDataSetChanged()V

    return-void
.end method
