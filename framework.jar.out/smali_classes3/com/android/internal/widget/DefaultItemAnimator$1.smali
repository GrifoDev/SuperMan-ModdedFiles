.class Lcom/android/internal/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v1, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v2, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v3, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v4, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v5, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
