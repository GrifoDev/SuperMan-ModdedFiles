.class Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void
.end method

.method protected onEventFired(III)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->doNotify(III)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 5

    const/4 v4, 0x4

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v3, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/2addr v3, p2

    iput v3, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    invoke-virtual {p0, v4, p1, p2}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-le v2, v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int v1, v2, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v4, v2, v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 5

    const/16 v4, 0x8

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v3, v3, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v3, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v3, p2

    iput v3, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    invoke-virtual {p0, v4, p1, p2}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v0, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int v1, v0, v2

    if-lez v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget v2, v2, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v4, v2, v1}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method
