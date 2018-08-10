.class Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TabletGridViewScrollListener.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
