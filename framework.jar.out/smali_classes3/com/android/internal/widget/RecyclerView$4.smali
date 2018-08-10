.class Lcom/android/internal/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public processPersistent(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animatePersistence(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method public unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$4;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    return-void
.end method
