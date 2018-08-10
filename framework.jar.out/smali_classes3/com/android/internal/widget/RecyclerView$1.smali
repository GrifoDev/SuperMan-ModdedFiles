.class Lcom/android/internal/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$1;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method
