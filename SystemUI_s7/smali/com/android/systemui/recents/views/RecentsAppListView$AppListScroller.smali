.class Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecentsAppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListScroller"
.end annotation


# instance fields
.field mCurrentScrollY:I

.field mPrevScrollY:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private onScrollYChanged(Z)V
    .locals 5

    const-string/jumbo v0, "RecentsAppListView"

    const-string/jumbo v1, "onScrollYChanged() - isTop=%b\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleButtonsContainer(Z)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->onScrollYChanged(Z)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    return-void

    :cond_2
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public resetScroll()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->scrollToPosition(I)V

    return-void
.end method
