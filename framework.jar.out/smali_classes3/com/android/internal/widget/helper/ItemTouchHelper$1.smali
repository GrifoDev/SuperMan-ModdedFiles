.class Lcom/android/internal/widget/helper/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$1;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
