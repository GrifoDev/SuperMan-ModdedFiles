.class Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "TabletGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

.field final synthetic val$view:Lcom/android/systemui/recents/sec/grid/TabletGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    iput-object p2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;->val$view:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 5

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    const-string/jumbo v1, "onItemRangeInserted() start=%d, count=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;->val$view:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 5

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    const-string/jumbo v1, "onItemRangeRemoved() start=%d, count=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;->val$view:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    return-void
.end method
