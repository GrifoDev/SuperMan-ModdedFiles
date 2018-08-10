.class Lcom/android/internal/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V
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

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->-wrap1(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v2, p1}, Lcom/android/internal/widget/RecyclerView;->-wrap2(Lcom/android/internal/widget/RecyclerView;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-wrap2(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-wrap3(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->removeAllViews()V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->removeViewAt(I)V

    return-void
.end method
