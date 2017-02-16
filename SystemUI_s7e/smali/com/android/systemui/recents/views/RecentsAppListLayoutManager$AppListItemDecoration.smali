.class Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mFreqAppCount:I

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetOthers:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetOthers:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetOthers:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mOffsetOthers:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method
