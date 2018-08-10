.class Lcom/android/internal/widget/helper/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
