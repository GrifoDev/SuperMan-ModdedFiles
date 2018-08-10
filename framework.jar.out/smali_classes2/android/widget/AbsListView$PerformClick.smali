.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, -0x1

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v5, :cond_4

    if-eq v3, v8, :cond_4

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v2

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v3, v8}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v3, v8}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V

    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, v3}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;I)I

    goto :goto_0

    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-static {v5, v6, v3}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V

    goto :goto_0
.end method
