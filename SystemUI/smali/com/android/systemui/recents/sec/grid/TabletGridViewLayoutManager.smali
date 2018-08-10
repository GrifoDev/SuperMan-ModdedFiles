.class public Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "TabletGridViewLayoutManager.java"


# static fields
.field public static ORIENTATION:I

.field public static SPANS_NORMAL:I

.field public static SPANS_SPLIT_LAND:I


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->SPANS_NORMAL:I

    sput v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->SPANS_SPLIT_LAND:I

    sput v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->ORIENTATION:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->SPANS_NORMAL:I

    sget v2, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->ORIENTATION:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-direct {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method protected isLayoutRTL()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateSpanCountIfNeeded()V
    .locals 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-ne v1, v3, :cond_0

    sget v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->SPANS_SPLIT_LAND:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->setSpanCount(I)V

    const-string/jumbo v1, "TabletRecents_TabletGridViewLayoutManager"

    const-string/jumbo v2, "updateSpanCountIfNeeded() Set to %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->SPANS_NORMAL:I

    goto :goto_0
.end method
