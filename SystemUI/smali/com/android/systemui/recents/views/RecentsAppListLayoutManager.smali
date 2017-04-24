.class public Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;,
        Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;
    }
.end annotation


# static fields
.field public static mItemContentHeight:I

.field public static mItemContentWidth:I

.field public static mItemContentWidthLand:I


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field mContext:Landroid/content/Context;

.field mFreqAppCount:I

.field mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

.field mOffsetOthers:I

.field mOffsetTop:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field mView:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;-><init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetTop:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetOthers:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidthLand:I

    return-void
.end method


# virtual methods
.method public bindAdapter(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getFrequentlyUsedAppCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mFreqAppCount:I

    return-void
.end method
