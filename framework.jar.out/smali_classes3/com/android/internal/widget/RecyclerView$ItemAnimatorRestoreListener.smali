.class Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    :cond_0
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-wrap1(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
